def factory_404_partner():
    partner = {
        'name': 'Frangão',
        'email': 'email@frangao.com',
        'whatsapp': '83999999994',
        'business': 'Restaurante'
    }
    return partner

def factory_remove_partner():
    partner = {
        'name': 'Adega do Papito',
        'email': 'email@adp.com',
        'whatsapp': '83999999994',
        'business': 'Restaurante'
    }
    return partner

def factory_enable_partner():
    partner = {
        'name': 'Doceria do Papito',
        'email': 'email@doce.com',
        'whatsapp': '83999999994',
        'business': 'Restaurante'
    }
    return partner

def factory_disable_partner():
    partner = {
        'name': 'Mercado Noite',
        'email': 'email@mercadonoite.com',
        'whatsapp': '83999999994',
        'business': 'Supermercado'
    }
    return partner

def factory_new_partner():
    partner = {
        'name': 'partner',
        'email': 'email@partner.com',
        'whatsapp': '83999999999',
        'business': 'Restaurante'
    }
    return partner


def factory_dup_name():
    partner = {
        'name': 'Adega do João',
        'email': 'email@joao.com',
        'whatsapp': '11999999999',
        'business': 'Conveniência'
    }
    return partner


def factory_partner_list():
    p_list = [
        {
            'name': 'Mercearia Mary Jane',
            'email': 'email@mmj.com',
            'whatsapp': '11999991001',
            'business': 'Conveniência'
        }, {
            'name': 'Mercadinho São Francisco',
            'email': 'email@msf.com',
            'whatsapp': '11999991002',
            'business': 'Supermercado'
        }, {
            'name': 'Bom de Prato',
            'email': 'email@bdp.com',
            'whatsapp': '11999991003',
            'business': 'Restaurante'
        }
    ]
    return p_list
