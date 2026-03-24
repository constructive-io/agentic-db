import { getConnections, PgTestClient } from 'pgsql-test';

// Validation rules:
// - url: lenient regex ^https?://[^\s]+$ (must start with http/https, no whitespace, paths allowed)
// - attachment: lenient regex ^https?://[^\s]+$ (same as url)
// - hostname: no whitespace (^[^\s]+$)
// - email: must contain @ (value ~ '@')
// - image: jsonb object requiring 'url' OR 'id' OR 'key', with type validation, optional bucket/provider/mime/versions (versions is array)
// - upload: jsonb object requiring 'url' OR 'id' OR 'key', with type validation on all fields, optional bucket/provider/mime

const validUrls = [
  'http://foo.com/blah_blah',
  'http://foo.com/blah_blah/',
  'http://foo.com/blah_blah_(wikipedia)',
  'http://www.example.com/wpstyle/?p=364',
  'https://www.example.com/foo/?bar=baz&inga=42&quux',
  'http://foo.com/blah_(wikipedia)#cite-1',
  'http://foo.com/(something)?after=parens',
  'http://code.google.com/events/#&product=browser',
  'http://j.mp',
  'http://foo.bar/?q=Test%20URL-encoded%20stuff',
  'http://1337.net',
  'http://a.b-c.de',
  'https://foo_bar.example.com/'
];

const invalidUrls = [
  'foo.com',
  'ftp://foo.bar/',
  'not-a-url',
  'random text with spaces',
  '//missing-protocol.com'
];

const validImages = [
  { url: 'http://www.foo.bar/some.jpg' },
  { url: 'https://foo.bar/some.PNG' },
  { url: 'https://example.com/path/to/image.png' },
  { url: 'https://example.com/image.png', bucket: 'my-bucket' },
  { url: 'https://example.com/image.png', provider: 's3', mime: 'image/png' },
  { id: 'some-image-id' },
  { key: 'some-image-key' },
  { id: 'private-image', bucket: 'my-bucket', provider: 's3' },
  { url: 'https://example.com/image.png', versions: ['thumb', 'large'] }
];

const invalidImages = [
  { notUrl: 'missing required keys' },
  { mime: 'only mime, no url/id/key' },
  { url: 'not-a-valid-url' },
  { url: 'ftp://wrong-protocol.com/image.png' },
  { id: 123 },
  { key: true },
  { url: 'https://example.com/image.png', bucket: 123 },
  { url: 'https://example.com/image.png', versions: 'not-an-array' }
];

const validUploads = [
  { url: 'http://www.foo.bar/some.jpg' },
  { url: 'https://foo.bar/some.PNG' },
  { id: 'some-id' },
  { key: 'some-key' },
  { url: 'https://example.com/file.pdf', id: 'with-id' },
  { id: 'some-id', bucket: 'my-bucket', provider: 's3', mime: 'application/pdf' }
];

const invalidUploads = [
  { notUrl: 'missing required keys' },
  { mime: 'only mime, no url/id/key' },
  { url: 'not-a-valid-url' },
  { url: 'ftp://wrong-protocol.com/file.pdf' },
  { id: 123 },
  { key: true }
];

let pg: PgTestClient;
let teardown:  () => Promise<void>;

beforeAll(async () => {
  ({ pg, teardown } = await getConnections());
});

beforeAll(async () => {
  await pg.any(`
CREATE TABLE customers (
  id serial,
  url url,
  image image,
  attachment attachment,
  domain hostname,
  email email,
  upload upload
);
  `);
});

beforeEach(async () => {
  await pg.beforeEach();
});

afterEach(async () => {
  await pg.afterEach();
});

afterAll(async () => {
  await teardown();
});

describe('types', () => {
  describe('url domain (lenient regex: ^https?://[^\\s]+$)', () => {
    it('accepts valid URLs', async () => {
      for (const value of validUrls) {
        await pg.any(`INSERT INTO customers (url) VALUES ($1);`, [value]);
      }
    });

    it('rejects invalid URLs', async () => {
      for (const value of invalidUrls) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (url) VALUES ($1);`, [value]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });

  describe('hostname domain (no whitespace: ^[^\\s]+$)', () => {
    it('accepts values without whitespace', async () => {
      const values = [
        'google.com',
        'www.example.com',
        'not-a-hostname',
        'http://with-protocol.com'
      ];
      for (const value of values) {
        await pg.any(`INSERT INTO customers (domain) VALUES ($1);`, [value]);
      }
    });

    it('rejects values with whitespace', async () => {
      const invalidValues = [
        'has spaces',
        'has\ttab'
      ];
      for (const value of invalidValues) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (domain) VALUES ($1);`, [value]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });

  describe('attachment domain (lenient regex: ^https?://[^\\s]+$)', () => {
    it('accepts valid URLs', async () => {
      const values = [
        'http://www.foo.bar/some.jpg',
        'https://foo.bar/some.PNG',
        'https://example.com/path/to/file.pdf'
      ];
      for (const value of values) {
        await pg.any(`INSERT INTO customers (attachment) VALUES ($1);`, [value]);
      }
    });

    it('rejects invalid URLs', async () => {
      const invalidValues = [
        'not-a-url',
        'ftp://wrong-protocol.com/file.pdf',
        'random text with spaces'
      ];
      for (const value of invalidValues) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (attachment) VALUES ($1);`, [value]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });

  describe('email domain (must contain @)', () => {
    it('accepts values containing @', async () => {
      const values = [
        'd@google.com',
        'user@example.org',
        'test@localhost'
      ];
      for (const value of values) {
        await pg.any(`INSERT INTO customers (email) VALUES ($1);`, [value]);
      }
    });

    it('rejects values without @', async () => {
      const invalidValues = [
        'not-an-email',
        'missing.at.sign'
      ];
      for (const value of invalidValues) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (email) VALUES ($1);`, [value]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });

  describe('image domain (jsonb requiring url OR id OR key, optional versions array)', () => {
    it('accepts valid images with url, id, or key', async () => {
      for (const image of validImages) {
        await pg.any(`INSERT INTO customers (image) VALUES ($1::json);`, [image]);
      }
    });

    it('rejects invalid images', async () => {
      for (const image of invalidImages) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (image) VALUES ($1::json);`, [image]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });

  describe('upload domain (jsonb requiring url OR id OR key)', () => {
    it('accepts valid uploads with url, id, or key', async () => {
      for (const upload of validUploads) {
        await pg.any(`INSERT INTO customers (upload) VALUES ($1::json);`, [upload]);
      }
    });

    it('rejects uploads without url, id, or key', async () => {
      for (const upload of invalidUploads) {
        let failed = false;
        try {
          await pg.any(`INSERT INTO customers (upload) VALUES ($1::json);`, [upload]);
        } catch (e) {
          failed = true;
        }
        expect(failed).toBe(true);
      }
    });
  });
});
