-- Deploy: schemas/agentic_db_status_public/tables/app_levels/columns/owner_id/alterations/alt0000004414
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/columns/owner_id/column


COMMENT ON COLUMN agentic_db_status_public.app_levels.owner_id IS E'Optional owner (actor) who created or manages this level';

