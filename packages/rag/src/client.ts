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
  // NOTE: Disabled env token shortcut because Platform Token != Tenant Token.
  // We must authenticate directly against the Tenant to get a valid session.
  /*
  if (process.env.ACCESS_TOKEN) {
    const userId = '32edd3a5-61b8-441d-fe3d-7cf56a7c0eea';
    return { token: process.env.ACCESS_TOKEN, userId };
  }
  */

  const adapter = new NodeHttpAdapter(config.graphqlUrl, { Host: config.authHost });
  const client = createClient({ adapter });
  
  // Try sign in
  const signInResult = await client.mutation.signIn({
    input: { email, password }
  }, {
    select: { result: { select: { accessToken: true, userId: true } } }
  }).execute();
  
  if (signInResult.ok && signInResult.data?.signIn?.result) {
    return {
      token: signInResult.data.signIn.result.accessToken,
      userId: signInResult.data.signIn.result.userId,
    };
  }
  
  // Fall back to sign up
  const signUpResult = await client.mutation.signUp({
    input: { email, password }
  }, {
    select: { result: { select: { accessToken: true, userId: true } } }
  }).execute();
  
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
