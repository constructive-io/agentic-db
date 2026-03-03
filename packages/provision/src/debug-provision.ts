import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

import { createClient } from './sdk/platform/orm/index';
import { NodeHttpAdapter } from './sdk/node-http-adapter';

const accessToken = process.env.ACCESS_TOKEN;
const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  // Authorization: `Bearer ${accessToken}`, // Removed auth
});
const client = createClient({ adapter });

async function main() {
  console.log('Testing connection...');
  // Try to fetch schemas
  const result = await client.schema.findMany({ select: { id: true, name: true }, first: 5 }).execute();
  if (result.ok) {
    console.log('✅ Connection successful. Schemas:', result.data.schemas.nodes);
  } else {
    console.error('❌ Failed:', JSON.stringify(result.errors, null, 2));
  }
}

main().catch(console.error);
