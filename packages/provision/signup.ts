import { NodeHttpAdapter } from './src/sdk/node-http-adapter';

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
});

async function main() {
  const email = 'rag-test@example.com';
  const password = 'RagTest123!';
  
  console.log(`Signing up ${email}...`);
  
  const query = `
    mutation SignUp($email: String!, $password: String!) {
      signUp(input: { email: $email, password: $password }) {
        result {
          id
          accessToken
        }
      }
    }
  `;
  
  const result = await adapter.execute(query, { email, password });
  
  if (result.ok) {
    console.log('✅ Signup Result:', JSON.stringify(result.data, null, 2));
  } else {
    console.error('❌ Failed:', JSON.stringify(result.errors, null, 2));
  }
}

main().catch(console.error);
