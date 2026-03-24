-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/constraints/tool_definitions_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ADD CONSTRAINT tool_definitions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

