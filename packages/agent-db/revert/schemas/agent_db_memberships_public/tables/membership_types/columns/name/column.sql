-- Revert: schemas/agent_db_memberships_public/tables/membership_types/columns/name/column


ALTER TABLE agent_db_memberships_public.membership_types 
  DROP COLUMN name RESTRICT;


