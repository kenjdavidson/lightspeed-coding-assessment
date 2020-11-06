import { IsNotEmpty, IsString, IsEmail, IsOptional } from 'class-validator';

export interface ConstructorParams {
  id: string;
  firstName: string;
  lastName: string;
  email?: string;
}

export class Customer {
  @IsNotEmpty()
  @IsString()
  id!: string;

  @IsNotEmpty()
  @IsString()
  lastName!: string;

  @IsString()
  firstName!: string;

  @IsEmail()
  @IsOptional()
  email?: string;

  constructor(params: ConstructorParams) {
    if (params) {
      Object.assign(this, {
        id: params.id,
        firstName: params.firstName,
        lastName: params.lastName,
        email: params.email,
      });
    }
  }

  get fullName(): string {
    return `${this.firstName} ${this.lastName}`;
  }
}
