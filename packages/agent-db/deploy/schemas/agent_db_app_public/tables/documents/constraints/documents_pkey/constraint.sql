-- Deploy: schemas/agent_db_app_public/tables/documents/constraints/documents_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/tags/column


ALTER TABLE agent_db_app_public.documents 
  ADD CONSTRAINT documents_pkey PRIMARY KEY (id);

