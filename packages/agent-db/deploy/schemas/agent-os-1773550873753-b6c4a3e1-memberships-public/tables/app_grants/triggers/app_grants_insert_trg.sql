-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/triggers/app_grants_insert_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/trigger_fns/app_grants_apply_tg


CREATE TRIGGER app_grants_insert_trg
BEFORE INSERT ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_grants_apply_tg ( );

