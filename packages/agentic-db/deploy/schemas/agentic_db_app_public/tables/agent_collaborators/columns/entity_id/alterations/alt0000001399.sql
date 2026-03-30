-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/columns/entity_id/alterations/alt0000001399
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  ALTER COLUMN entity_id SET NOT NULL;

