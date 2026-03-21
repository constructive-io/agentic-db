-- Revert: schemas/agentic_db_users_public/tables/role_types/constraints/role_types_name_key/constraint


ALTER TABLE agentic_db_users_public.role_types 
  DROP CONSTRAINT role_types_name_key;


