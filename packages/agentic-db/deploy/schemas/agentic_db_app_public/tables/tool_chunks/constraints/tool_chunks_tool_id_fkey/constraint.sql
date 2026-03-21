-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/constraints/tool_chunks_tool_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/indexes/blueprint_chunks_blueprint_id_idx


ALTER TABLE "agentic_db_app_public".tool_chunks 
  ADD CONSTRAINT tool_chunks_tool_id_fkey 
    FOREIGN KEY(tool_id) 
    REFERENCES "agentic_db_app_public".tools (id) 
    ON DELETE CASCADE;

