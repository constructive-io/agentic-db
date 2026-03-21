-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/columns/tool_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/indexes/blueprint_chunks_blueprint_id_idx


ALTER TABLE "agentic_db_app_public".tool_chunks 
  ADD COLUMN tool_id uuid;

