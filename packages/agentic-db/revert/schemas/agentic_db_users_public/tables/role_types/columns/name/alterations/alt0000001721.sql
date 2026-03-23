-- Revert: schemas/agentic_db_users_public/tables/role_types/columns/name/alterations/alt0000001721


ALTER TABLE agentic_db_users_public.role_types 
  ALTER COLUMN name DROP NOT NULL;


