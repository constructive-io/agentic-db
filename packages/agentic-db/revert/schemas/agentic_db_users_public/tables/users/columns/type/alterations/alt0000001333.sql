-- Revert: schemas/agentic_db_users_public/tables/users/columns/type/alterations/alt0000001333


ALTER TABLE agentic_db_users_public.users 
  ALTER COLUMN type DROP NOT NULL;


