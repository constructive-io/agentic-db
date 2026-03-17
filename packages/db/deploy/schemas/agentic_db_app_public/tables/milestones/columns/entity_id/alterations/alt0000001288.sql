-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/entity_id/alterations/alt0000001288
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/search_tsv/column
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN entity_id SET NOT NULL;

