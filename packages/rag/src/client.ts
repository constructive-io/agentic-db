/**
 * GraphQL client factory
 */
import { NodeHttpAdapter } from '@constructive-io/node';
import { config } from './config';

// SDK path - using dynamic import
const SDK_PATH = '/Users/constructivio/Constructive/agent-os/sdk/agent-os-sdk/generated/orm/index';

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
  
  let result = await adapter.execute<{
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
  
  result = await adapter.execute<{
    signUp: { result: { accessToken: string; userId: string } };
  }>(signUpQuery, { email, password });
  
  if (!result.ok || !result.data?.signUp?.result) {
    throw new Error(`Auth failed: ${JSON.stringify(result.errors)}`);
  }
  
  return {
    token: result.data.signUp.result.accessToken,
    userId: result.data.signUp.result.userId,
  };
}

/**
 * Create authenticated SDK client
 */
export async function createAuthenticatedClient(token: string) {
  const adapter = new NodeHttpAdapter(config.graphqlUrl, {
    Host: config.appHost,
    Authorization: `Bearer ${token}`,
  });
  
  const { createClient } = await import(SDK_PATH);
  return createClient({ adapter });
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
