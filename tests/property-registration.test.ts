import { describe, it, expect, beforeEach } from 'vitest';
import fs from 'fs';
import path from 'path';

describe('Property Registration Contract', () => {
  // Read the contract code
  const contractCode = fs.readFileSync(
      path.resolve(__dirname, '../contracts/property-registration.clar'),
      'utf8'
  );
  
  it('should contain property registration functionality', () => {
    // Check for key functions
    expect(contractCode).toContain('define-public (register-property');
    expect(contractCode).toContain('define-read-only (get-property');
    expect(contractCode).toContain('define-public (update-property');
  });
  
  it('should have a properties map', () => {
    expect(contractCode).toContain('define-map properties');
    expect(contractCode).toContain('property-id: uint');
    expect(contractCode).toContain('owner: principal');
    expect(contractCode).toContain('name: (string-utf8');
    expect(contractCode).toContain('address: (string-utf8');
    expect(contractCode).toContain('square-footage: uint');
  });
  
  it('should track the last property ID', () => {
    expect(contractCode).toContain('define-data-var last-property-id uint');
  });
  
  it('should have property ownership verification', () => {
    expect(contractCode).toContain('define-read-only (is-property-owner');
  });
});
