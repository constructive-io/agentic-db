-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/entity_id/alterations/alt0000004492
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/milestones/columns/entity_id/column


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN entity_id SET NOT NULL;

