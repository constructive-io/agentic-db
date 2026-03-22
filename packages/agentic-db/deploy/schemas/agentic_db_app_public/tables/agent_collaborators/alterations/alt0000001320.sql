-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/alterations/alt0000001320
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx


COMMENT ON TABLE "agentic_db_app_public".agent_collaborators IS E'@behavior +manyToMany';

