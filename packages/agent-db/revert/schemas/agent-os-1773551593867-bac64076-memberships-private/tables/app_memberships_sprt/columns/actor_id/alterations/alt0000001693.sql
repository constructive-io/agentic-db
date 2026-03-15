-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000001693


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt 
  ALTER COLUMN actor_id DROP NOT NULL;


