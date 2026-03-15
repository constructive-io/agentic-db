-- Revert: schemas/agent_db_memberships_public/tables/membership_types/policies/enable_row_level_security


ALTER TABLE agent_db_memberships_public.membership_types 
  DISABLE ROW LEVEL SECURITY;


