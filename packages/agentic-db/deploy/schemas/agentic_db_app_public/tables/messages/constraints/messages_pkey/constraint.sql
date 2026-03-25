-- Deploy: schemas/agentic_db_app_public/tables/messages/constraints/messages_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".messages 
  ADD CONSTRAINT messages_pkey PRIMARY KEY (id);

