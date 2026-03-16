-- Deploy: schemas/agentic_db_app_public/tables/tags/constraints/tags_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE "agentic_db_app_public".tags 
  ADD CONSTRAINT tags_pkey PRIMARY KEY (id);

