-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/constraints/notes_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agentic_db_app_public".notes_chunks 
  ADD CONSTRAINT notes_chunks_pkey PRIMARY KEY (id);

