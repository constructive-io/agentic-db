-- Revert: schemas/agent_db_users_public/tables/role_types/constraints/role_types_pkey/constraint


ALTER TABLE agent_db_users_public.role_types 
  DROP CONSTRAINT role_types_pkey;


