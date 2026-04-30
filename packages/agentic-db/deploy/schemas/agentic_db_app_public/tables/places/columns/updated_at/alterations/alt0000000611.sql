-- Deploy: schemas/agentic_db_app_public/tables/places/columns/updated_at/alterations/alt0000000611
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


COMMENT ON COLUMN agentic_db_app_public.places.updated_at IS 'Timestamp when this record was last updated';

