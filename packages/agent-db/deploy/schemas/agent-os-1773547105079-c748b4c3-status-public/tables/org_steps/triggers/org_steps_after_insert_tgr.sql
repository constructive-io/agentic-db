-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/triggers/org_steps_after_insert_tgr
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-private/trigger_fns/member_tg_upd_achv


CREATE TRIGGER org_steps_after_insert_tgr
AFTER INSERT ON "agent-os-1773547105079-c748b4c3-status-public".org_steps
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773547105079-c748b4c3-status-private".member_tg_upd_achv ( );

