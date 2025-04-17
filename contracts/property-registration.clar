;; Property Registration Contract
;; Records details of commercial buildings

(define-data-var last-property-id uint u0)

;; Property data structure
(define-map properties
  { property-id: uint }
  {
    owner: principal,
    name: (string-utf8 100),
    address: (string-utf8 200),
    square-footage: uint,
    registration-date: uint
  }
)

;; Register a new property
(define-public (register-property (name (string-utf8 100)) (address (string-utf8 200)) (square-footage uint))
  (let
    (
      (new-id (+ (var-get last-property-id) u1))
    )
    (var-set last-property-id new-id)
    (map-set properties
      { property-id: new-id }
      {
        owner: tx-sender,
        name: name,
        address: address,
        square-footage: square-footage,
        registration-date: block-height
      }
    )
    (ok new-id)
  )
)

;; Get property details
(define-read-only (get-property (property-id uint))
  (map-get? properties { property-id: property-id })
)

;; Update property details
(define-public (update-property (property-id uint) (name (string-utf8 100)) (address (string-utf8 200)) (square-footage uint))
  (let
    (
      (property (unwrap! (map-get? properties { property-id: property-id }) (err u1)))
    )
    (asserts! (is-eq (get owner property) tx-sender) (err u2))
    (map-set properties
      { property-id: property-id }
      {
        owner: tx-sender,
        name: name,
        address: address,
        square-footage: square-footage,
        registration-date: (get registration-date property)
      }
    )
    (ok true)
  )
)

;; Check if user owns a property
(define-read-only (is-property-owner (property-id uint) (user principal))
  (let
    (
      (property (map-get? properties { property-id: property-id }))
    )
    (if (is-some property)
      (is-eq (get owner (unwrap-panic property)) user)
      false
    )
  )
)
