import { Injectable } from '@nestjs/common';
import { Customer, CustomerRepository } from '../core';
import * as RETAIL_RESPONSE from '../../__mocks__/customers.retail-api.json';

@Injectable()
export class CustomerRetailAPIRepository implements CustomerRepository {
  private _customers: Customer[] = [];

  constructor() {
    this._customers = RETAIL_RESPONSE.Customer.map(
      ({ customerID: id, lastName, firstName }) =>
        new Customer({
          id,
          lastName,
          firstName,
        }),
    );
  }

  async findAll(): Promise<Customer[]> {
    return this._customers;
  }
}
