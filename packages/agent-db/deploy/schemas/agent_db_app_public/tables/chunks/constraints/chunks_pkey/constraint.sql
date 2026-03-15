-- Deploy: schemas/agent_db_app_public/tables/chunks/constraints/chunks_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE "agent_db_app_public".chunks 
  ADD CONSTRAINT chunks_pkey PRIMARY KEY (id);

