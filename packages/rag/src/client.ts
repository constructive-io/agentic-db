/**
 * GraphQL client factory
 */
import { NodeHttpAdapter } from '@constructive-io/node';
import { createClient } from '@agentic-sdk/sdk';
import { config } from './config';

export interface AuthResult {
  token: string;
  userId: string;
}

/**
 * Sign up or sign in to get a token
 */
export async function authenticate(email: string, password: string): Promise<AuthResult> {
  const adapter = new NodeHttpAdapter(config.graphqlUrl, { Host: config.authHost });
  
  // Try sign in first
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
  
  // Fall back to sign up
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

/**
 * Create raw GraphQL adapter for custom queries
 */
export function createRawAdapter(token: string): NodeHttpAdapter {
  return new NodeHttpAdapter(config.graphqlUrl, {
    Host: config.appHost,
    Authorization: `Bearer ${token}`,
  });
}

/**
 * Create authenticated SDK client
 */
export function createAuthenticatedClient(token: string) {
  const adapter = createRawAdapter(token);
  return createClient({ adapter });
}
