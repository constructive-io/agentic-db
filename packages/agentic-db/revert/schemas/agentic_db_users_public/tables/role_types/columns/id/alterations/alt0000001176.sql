-- Revert: schemas/agentic_db_users_public/tables/role_types/columns/id/alterations/alt0000001176


ALTER TABLE agentic_db_users_public.role_types 
  ALTER COLUMN id DROP NOT NULL;


