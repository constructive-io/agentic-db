-- Deploy schemas/metaschema_public/types/api_exposure_level to pg

-- requires: schemas/metaschema_public/schema

BEGIN;

-- Controls whether a schema can be linked to a public API.
-- 'exposable'     - default; schema may be added to any API
-- 'internal_only' - schema is server-side only; adding to an API is blocked but can be overridden by a platform admin
-- 'never_expose'  - hard block; schema can never be added to an API (one-way ratchet, cannot be loosened)
CREATE TYPE metaschema_public.api_exposure_level AS ENUM ('exposable', 'internal_only', 'never_expose');

COMMIT;
