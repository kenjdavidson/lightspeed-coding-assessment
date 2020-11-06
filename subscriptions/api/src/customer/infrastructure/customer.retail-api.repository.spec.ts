import { INestApplication } from '@nestjs/common';
import { Test, TestingModule } from '@nestjs/testing';
import { AppModule } from '../../app.module';
import { Customer } from '../core';
import { CustomerRetailAPIRepository } from './customer.retail-api.repository';

describe('CustomerRetailAPIRepository', () => {
  let app: INestApplication;
  let repository: CustomerRetailAPIRepository;

  beforeAll(async () => {
    const moduleFixture: TestingModule = await Test.createTestingModule({
      imports: [AppModule],
    }).compile();

    app = moduleFixture.createNestApplication();
    await app.init();
    repository = new CustomerRetailAPIRepository();
  });

  afterAll(async () => {
    await app.close();
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('findAll', () => {
    let result: Customer[];

    beforeEach(async () => {
      result = await repository.findAll();
    });

    it('returns customers', () => {
      expect(result.length).toBe(13);
    });

    it('maps external fields to our local one', () => {
      expect(result[0]).toMatchObject({
        firstName: 'Miles',
        lastName: 'Morales',
        email: 'milesmorales@lightspeedhq.com',
      });
    });
  });
});
