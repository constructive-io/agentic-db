-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/columns/collaborator_id/alterations/alt0000001322
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/collaborator_id/column


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  ALTER COLUMN collaborator_id SET NOT NULL;

