import { NodeHttpAdapter } from './src/sdk/node-http-adapter';

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';
const token = 'd33fa662a47313eba13550e0bb928415c8acdcaeaa8e9aec1bba745c76cf743dc3e24351854eed16823e5cc65536671e';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  Authorization: `Bearer ${token}`,
});

async function main() {
  const query = `
    query MyDbs {
      currentUser {
        ownedDatabases {
          nodes {
            id
            name
            databaseProvisionModules {
              nodes {
                status
              }
            }
          }
        }
      }
    }
  `;
  
  const result = await adapter.execute(query);
  
  if (result.ok) {
    console.log('Databases:', JSON.stringify(result.data, null, 2));
  } else {
    console.error('❌ Failed:', JSON.stringify(result.errors, null, 2));
  }
}

main().catch(console.error);
