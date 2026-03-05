import { NodeHttpAdapter } from '@constructive-io/node';
import { createClient } from '@agentic-sdk/sdk';
import { config } from './config';
import * as dotenv from 'dotenv';
import * as path from 'path';

dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

export interface AuthResult {
  token: string;
  userId: string;
}

export async function authenticate(email: string, password: string): Promise<AuthResult> {
  // If env var is set, use it (now updated with valid Tenant Token!)
  if (process.env.ACCESS_TOKEN) {
    const userId = '32edd3a5-61b8-441d-fe3d-7cf56a7c0eea';
    return { token: process.env.ACCESS_TOKEN, userId };
  }

  const adapter = new NodeHttpAdapter(config.graphqlUrl, { Host: config.authHost });
  // Note: SDK client.mutation seems undefined for root mutations in current build?
  // Falling back to raw adapter for AUTH only to unblock.
  
  const signInQuery = `
    mutation SignIn($email: String!, $password: String!) {
      signIn(input: { email: $email, password: $password }) {
        result { accessToken userId }
      }
    }
  `;
  
  const result = await adapter.execute<{
    signIn: { result: { accessToken: string; userId: string } | null };
  }>(signInQuery, { email, password });
  
  if (result.ok && result.data?.signIn?.result) {
    return {
      token: result.data.signIn.result.accessToken,
      userId: result.data.signIn.result.userId,
    };
  }
  
  const signUpQuery = `
    mutation SignUp($email: String!, $password: String!) {
      signUp(input: { email: $email, password: $password }) {
        result { accessToken userId }
      }
    }
  `;
  
  const signUpResult = await adapter.execute<{
    signUp: { result: { accessToken: string; userId: string } };
  }>(signUpQuery, { email, password });
  
  if (!signUpResult.ok || !signUpResult.data?.signUp?.result) {
    throw new Error(`Auth failed: ${JSON.stringify(signUpResult.errors)}`);
  }
  
  return {
    token: signUpResult.data.signUp.result.accessToken,
    userId: signUpResult.data.signUp.result.userId,
  };
}

export function createAuthenticatedClient(token: string) {
  const adapter = new NodeHttpAdapter(config.graphqlUrl, {
    Host: config.appHost,
    Authorization: `Bearer ${token}`,
  });
  return createClient({ adapter });
}
