-- Deploy: schemas/agentic_db_users_public/tables/users/columns/updated_at/alterations/alt0000012020
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/updated_at/column


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN updated_at SET DEFAULT now();

