-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/entity_id/alterations/alt0000002133
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN entity_id SET NOT NULL;

