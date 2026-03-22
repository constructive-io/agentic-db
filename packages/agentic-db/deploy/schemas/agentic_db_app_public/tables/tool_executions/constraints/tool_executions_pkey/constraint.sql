-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/constraints/tool_executions_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/alterations/alt0000006106


ALTER TABLE agentic_db_app_public.tool_executions 
  ADD CONSTRAINT tool_executions_pkey PRIMARY KEY (id);

