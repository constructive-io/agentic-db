-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/constraints/org_memberships_actor_id_entity_id_key/constraint


ALTER TABLE agentic_db_memberships_public.org_memberships 
  DROP CONSTRAINT org_memberships_actor_id_entity_id_key;


