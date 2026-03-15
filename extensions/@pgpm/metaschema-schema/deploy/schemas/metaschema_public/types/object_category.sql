-- Deploy schemas/metaschema_public/types/object_category to pg

-- requires: schemas/metaschema_public/schema

BEGIN;

-- Unified category type for all metaschema objects (tables, fields, procedures, triggers, indexes, policies, constraints, etc.)
-- 'core' - system-level objects (id fields, entity_id, actor_id, etc.)
-- 'module' - objects created by modules (users, permissions, memberships, etc.)
-- 'app' - user-defined application objects
CREATE TYPE metaschema_public.object_category AS ENUM ('core', 'module', 'app');

COMMIT;
