-- Deploy: schemas/agentic_db_users_public/tables/users/columns/username/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table


ALTER TABLE "agentic_db_users_public".users 
  ADD COLUMN username citext;

