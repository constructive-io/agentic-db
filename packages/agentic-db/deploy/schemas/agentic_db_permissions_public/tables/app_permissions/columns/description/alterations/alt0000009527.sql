-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/columns/description/alterations/alt0000009527
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/columns/description/column


COMMENT ON COLUMN agentic_db_permissions_public.app_permissions.description IS E'Human-readable description of what this permission allows';

