-- Deploy: schemas/agentic_db_app_public/tables/notes/constraints/notes_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE agentic_db_app_public.notes 
  ADD CONSTRAINT notes_pkey PRIMARY KEY (id);

