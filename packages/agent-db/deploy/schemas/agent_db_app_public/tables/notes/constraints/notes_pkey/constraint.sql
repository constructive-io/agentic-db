-- Deploy: schemas/agent_db_app_public/tables/notes/constraints/notes_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".notes 
  ADD CONSTRAINT notes_pkey PRIMARY KEY (id);

