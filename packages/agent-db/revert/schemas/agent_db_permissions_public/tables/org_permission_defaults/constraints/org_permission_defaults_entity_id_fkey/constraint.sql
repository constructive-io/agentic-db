-- Revert: schemas/agent_db_permissions_public/tables/org_permission_defaults/constraints/org_permission_defaults_entity_id_fkey/constraint


ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
  DROP CONSTRAINT org_permission_defaults_entity_id_fkey;


