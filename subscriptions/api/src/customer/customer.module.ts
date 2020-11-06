import { Module } from '@nestjs/common';
import { CustomerRepositoryToken } from './core';
import { CustomerRetailAPIRepository } from './infrastructure';
import { CustomerController } from './presentation/customer.controller';

@Module({
  imports: [CustomerRetailAPIRepository],
  controllers: [CustomerController],
  providers: [
    {
      provide: CustomerRepositoryToken,
      useClass: CustomerRetailAPIRepository,
    },
  ],
  exports: [CustomerRetailAPIRepository],
})
export class CustomerModule {}
