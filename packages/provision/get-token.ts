import { authenticate } from '../rag/src/client';

async function main() {
  const email = 'rag-test@example.com';
  const password = 'RagTest123!';
  
  try {
    const { token } = await authenticate(email, password);
    console.log('New Token:', token);
  } catch (err) {
    console.error('Auth failed:', err);
  }
}

main();
