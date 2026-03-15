-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/triggers/org_steps_after_insert_tgr
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-private/trigger_fns/member_tg_upd_achv


CREATE TRIGGER org_steps_after_insert_tgr
AFTER INSERT ON "agent-os-1773551593867-bac64076-status-public".org_steps
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-status-private".member_tg_upd_achv ( );

