-- Deploy: schemas/agentic_db_users_public/tables/users/columns/id/alterations/alt0000004221
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/id/column



ALTER TABLE agentic_db_users_public.users 
    ALTER COLUMN id SET DEFAULT uuidv7();

