import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });
import { createClient } from '../sdk/platform/orm/index';
import { NodeHttpAdapter } from '../sdk/node-http-adapter';
import { withRetry } from '../helpers';

const databaseId = process.env.DATABASE_ID;
const accessToken = process.env.ACCESS_TOKEN;
const adapter = new NodeHttpAdapter('http://[::1]:3000/graphql', { Host: 'api.localhost', Authorization: `Bearer ${accessToken}` });
const client = createClient({ adapter });

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function main() {
  const tablesResult = await client.table.findMany({
    condition: { databaseId },
    select: { id: true, name: true }
  }).unwrap();
  const contactLinksId = tablesResult.tables?.nodes.find((n: any) => n.name === 'contact_links')?.id;
  if (!contactLinksId) throw new Error('Table not found');
  
  await addField(contactLinksId, 'title', 'text');
  await addField(contactLinksId, 'url', 'text', { isRequired: true });
  await addField(contactLinksId, 'embedding', 'vector(768)');
  console.log('Fixed contact_links fields');
}
main().catch(console.error);
