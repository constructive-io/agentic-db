-- Deploy: schemas/agentic_db_users_public/tables/users/columns/username/alterations/alt0000002836
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/username/column


ALTER TABLE agentic_db_users_public.users 
  ADD CONSTRAINT users_username_chk 
    CHECK (character_length(username) <= 256);

