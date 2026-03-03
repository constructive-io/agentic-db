import { createClient } from './src/sdk/platform/orm/index';
import { NodeHttpAdapter } from './src/sdk/node-http-adapter';

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
});

async function main() {
  const email = 'rag-test@example.com';
  const password = 'RagTest123!';
  
  console.log(`Authenticating ${email}...`);
  
  const query = `
    mutation SignIn($email: String!, $password: String!) {
      signIn(input: { email: $email, password: $password }) {
        result {
          accessToken
        }
      }
    }
  `;
  
  const result = await adapter.execute(query, { email, password });
  
  if (result.ok) {
    console.log('Result Data:', JSON.stringify(result.data, null, 2));
  } else {
    console.error('❌ Failed:', JSON.stringify(result.errors, null, 2));
  }
}

main().catch(console.error);
