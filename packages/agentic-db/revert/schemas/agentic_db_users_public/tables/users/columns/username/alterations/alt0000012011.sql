-- Revert: schemas/agentic_db_users_public/tables/users/columns/username/alterations/alt0000012011


ALTER TABLE agentic_db_users_public.users 
  DROP CONSTRAINT users_username_chk;


