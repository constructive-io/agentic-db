\echo Use "CREATE EXTENSION pgpm-types" to load this file. \quit
CREATE DOMAIN attachment AS text 
  CHECK (value ~ E'^https?://[^\\s]+$');

COMMENT ON DOMAIN attachment IS '@name constructiveInternalTypeAttachment';

CREATE DOMAIN email AS citext 
  CHECK (value ~ '@');

COMMENT ON DOMAIN email IS '@name constructiveInternalTypeEmail';

CREATE DOMAIN hostname AS text 
  CHECK (value ~ E'^[^\\s]+$');

COMMENT ON DOMAIN hostname IS '@name constructiveInternalTypeHostname';

CREATE DOMAIN image AS jsonb 
  CHECK (
  jsonb_typeof(value) = 'object'
    AND (value ? 'url'
    OR value ? 'id'
    OR value ? 'key')
    AND (NOT (value ? 'url')
    OR (value ->> 'url') ~ E'^https?://[^\\s]+$')
    AND (NOT (value ? 'id')
    OR jsonb_typeof(value -> 'id') = 'string')
    AND (NOT (value ? 'key')
    OR jsonb_typeof(value -> 'key') = 'string')
    AND (NOT (value ? 'bucket')
    OR jsonb_typeof(value -> 'bucket') = 'string')
    AND (NOT (value ? 'provider')
    OR jsonb_typeof(value -> 'provider') = 'string')
    AND (NOT (value ? 'mime')
    OR jsonb_typeof(value -> 'mime') = 'string')
    AND (NOT (value ? 'versions')
    OR jsonb_typeof(value -> 'versions') = 'array')
);

COMMENT ON DOMAIN image IS '@name constructiveInternalTypeImage';

CREATE DOMAIN origin AS text 
  CHECK (value ~ E'^https?://[^/\\s]+$');

COMMENT ON DOMAIN origin IS '@name constructiveInternalTypeOrigin';

CREATE DOMAIN upload AS jsonb 
  CHECK (
  jsonb_typeof(value) = 'object'
    AND (value ? 'url'
    OR value ? 'id'
    OR value ? 'key')
    AND (NOT (value ? 'url')
    OR (value ->> 'url') ~ E'^https?://[^\\s]+$')
    AND (NOT (value ? 'id')
    OR jsonb_typeof(value -> 'id') = 'string')
    AND (NOT (value ? 'key')
    OR jsonb_typeof(value -> 'key') = 'string')
    AND (NOT (value ? 'bucket')
    OR jsonb_typeof(value -> 'bucket') = 'string')
    AND (NOT (value ? 'provider')
    OR jsonb_typeof(value -> 'provider') = 'string')
    AND (NOT (value ? 'mime')
    OR jsonb_typeof(value -> 'mime') = 'string')
);

COMMENT ON DOMAIN upload IS '@name constructiveInternalTypeUpload';

CREATE DOMAIN url AS text 
  CHECK (value ~ E'^https?://[^\\s]+$');

COMMENT ON DOMAIN url IS '@name constructiveInternalTypeUrl';