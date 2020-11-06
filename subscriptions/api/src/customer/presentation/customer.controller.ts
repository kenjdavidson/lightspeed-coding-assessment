import { Controller, Get, Inject } from '@nestjs/common';
import { Customer, CustomerRepositoryToken } from '../core';

@Controller('users')
export class CustomerController {
  constructor(
    @Inject(CustomerRepositoryToken)
    private readonly _repository: any,
  ) {}

  @Get()
  async findAll(): Promise<Customer[]> {
    return this._repository.findAll();
  }
}
