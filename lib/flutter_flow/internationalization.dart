import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loadingpage
  {
    'dhcn349w': {
      'pt': 'Carteira de Vacina ',
      'en': '',
    },
    'jyuhyr6i': {
      'pt': 'Home',
      'en': '',
    },
  },
  // loginpage
  {
    'waqwk06j': {
      'pt':
          '\n\"Acompanhe suas vacinas de forma simples, segura e digital. Sua saúde em dia, sempre \nna palma da mão.\"',
      'en': '',
    },
    '70s7mvie': {
      'pt': 'Seu Email...',
      'en': '',
    },
    'htjjqjqx': {
      'pt': 'Sua senha...',
      'en': '',
    },
    'k5fxlwbl': {
      'pt': 'Digite um email valido',
      'en': '',
    },
    '758maofp': {
      'pt': 'Email digitado não é valido',
      'en': '',
    },
    'ht9isb2j': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'liccf7s7': {
      'pt': 'Digite uma senha valida ',
      'en': '',
    },
    'ov54yur3': {
      'pt': 'Insira no minimo 6 caracteres ',
      'en': '',
    },
    '3u66f9u3': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '4jqko5hd': {
      'pt': 'Fazer login ',
      'en': '',
    },
    '33cw3vrg': {
      'pt': 'Esqueci minha senha',
      'en': '',
    },
    'mng9gwo0': {
      'pt': 'Cadastrar-se',
      'en': '',
    },
    '0q20prps': {
      'pt': 'Home',
      'en': '',
    },
  },
  // QRcode
  {
    'oduxcdu3': {
      'pt': 'Escanear QR Code',
      'en': '',
    },
    'n5k4t7us': {
      'pt': 'Aponte a câmera para o QR Code \n',
      'en': '',
    },
    '3ig76cms': {
      'pt': '\n',
      'en': '',
    },
    'lvw4q5c4': {
      'pt': 'do cartão de vacinação',
      'en': '',
    },
    'ra6uvvss': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Perfil
  {
    'jtrkrl8r': {
      'pt': 'Data de nascimento',
      'en': '',
    },
    'aeve1cuo': {
      'pt': 'Sexo',
      'en': '',
    },
    'xscrwn24': {
      'pt': 'Código de vacinação',
      'en': '',
    },
    'o0digqop': {
      'pt': 'Home',
      'en': '',
    },
  },
  // campanhasVacinacao
  {
    'liuvv6hl': {
      'pt': 'Campanhas de vacinação',
      'en': '',
    },
    'vk1uiymi': {
      'pt': 'Leia QR Code ',
      'en': '',
    },
    'e3ngv4cc': {
      'pt': 'Cancelar',
      'en': '',
    },
    'p1c1og2w': {
      'pt': 'Campanhas com QR Code',
      'en': '',
    },
    'gvwiiodf': {
      'pt':
          'Facilite sua vacinação: basta escanear \no QR Code no posto de saúde para \nregistrar sua dose sem precisar \npreencher nada.',
      'en': '',
    },
    'tvi6g8ji': {
      'pt': 'Home',
      'en': '',
    },
  },
  // VacinasConcluidas
  {
    '2se0by5y': {
      'pt': 'Vacinas concluídas ',
      'en': '',
    },
    'y1803zab': {
      'pt': 'Aplicador: ',
      'en': '',
    },
    '8361y4x1': {
      'pt': 'Aplicador: ',
      'en': '',
    },
    'zyoqehkx': {
      'pt': 'Home',
      'en': '',
    },
  },
  // NovaSenha
  {
    'g46cww3y': {
      'pt': 'Nova senha',
      'en': '',
    },
    '9fec7fi8': {
      'pt': 'Insira a nova senha!',
      'en': '',
    },
    'vbs3x3za': {
      'pt': 'Nova senha',
      'en': '',
    },
    'y4e63t78': {
      'pt': 'Confirmar senha',
      'en': '',
    },
    '28i3u9i3': {
      'pt': 'Insira uma senha valída',
      'en': '',
    },
    'xya5bpfq': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'fyynrs71': {
      'pt': 'Confirmar senha valída',
      'en': '',
    },
    '1j4wblg1': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5vel4edl': {
      'pt': 'Salvar',
      'en': '',
    },
    'fh9449qf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // home
  {
    'rbetl2c8': {
      'pt': 'Menu',
      'en': '',
    },
    'w3925fgv': {
      'pt': 'Olá, \n',
      'en': '',
    },
    'rblonld0': {
      'pt': '\n',
      'en': '',
    },
    '0i0fazlu': {
      'pt': ' Vacinas pendentes',
      'en': '',
    },
    '1xi8l1av': {
      'pt': 'Vacinas concluídas',
      'en': '',
    },
    'ke89qa8c': {
      'pt': 'Postos proximos',
      'en': '',
    },
    'qnn0ywdm': {
      'pt': 'Página incial',
      'en': '',
    },
    'vl6k6czh': {
      'pt': 'Ir para página inicial ',
      'en': '',
    },
    'glr0mntd': {
      'pt': 'Meu perfil',
      'en': '',
    },
    '8btl6eas': {
      'pt': 'Personalize seu perfil',
      'en': '',
    },
    'k5ylzh8i': {
      'pt': 'Notícias',
      'en': '',
    },
    '9pwbq66s': {
      'pt': 'As ultimas informações sobre vacinações',
      'en': '',
    },
    '7ek5f0jr': {
      'pt': 'Políticas de privacidade ',
      'en': '',
    },
    'keulzxcp': {
      'pt': 'Leia as políticas e os termos de serviço',
      'en': '',
    },
    'om40vvoy': {
      'pt': 'Log Out',
      'en': '',
    },
    'ruks0n2k': {
      'pt': 'Sair da sua conta',
      'en': '',
    },
    'd28ngd3r': {
      'pt': 'Home',
      'en': '',
    },
  },
  // VacinasPendentes
  {
    'wgom2ils': {
      'pt': 'Vacinas pendentes',
      'en': '',
    },
    'uwstcwtf': {
      'pt': 'Home',
      'en': '',
    },
  },
  // Noticias
  {
    'j7jm0kqa': {
      'pt': 'Notícias',
      'en': '',
    },
    'b5lb7j8n': {
      'pt': '\n\n',
      'en': '',
    },
    'taah7k5p': {
      'pt': '\n\n',
      'en': '',
    },
    'g4kxnln4': {
      'pt': '\n',
      'en': '',
    },
    'wux6g77v': {
      'pt': 'Ver mais',
      'en': '',
    },
    'wqgi9wyq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // CriarConta
  {
    '6x8ygtqi': {
      'pt': 'Carteira de vacina',
      'en': '',
    },
    'le51tejp': {
      'pt': 'Preencha o formulario para se cadastrar',
      'en': '',
    },
    'sg46qmf2': {
      'pt': 'Digite seu nome completo...',
      'en': '',
    },
    'cerwmtwx': {
      'pt': 'Sexo',
      'en': '',
    },
    'tgf07gv5': {
      'pt': 'Search...',
      'en': '',
    },
    'ac0oz21d': {
      'pt': 'Masculino',
      'en': '',
    },
    '0ufvm9ay': {
      'pt': 'Feminino',
      'en': '',
    },
    'f8xamihm': {
      'pt': 'Prefiro não dizer...',
      'en': '',
    },
    'fju9nk5v': {
      'pt': 'Digite seu Email...',
      'en': '',
    },
    'oakrccqu': {
      'pt': 'Digite sua senha...',
      'en': '',
    },
    'o1wayt2s': {
      'pt': 'Digite novamente a senha...',
      'en': '',
    },
    'ujr6kzlo': {
      'pt': 'Digite um nome valido.',
      'en': '',
    },
    'ir20jrgu': {
      'pt': 'Digite seu nome completo',
      'en': '',
    },
    '8auj22le': {
      'pt': 'Nome invalido',
      'en': '',
    },
    'agkaqvt1': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '5at65y2d': {
      'pt': 'Cartão de vacina obrigatório',
      'en': '',
    },
    'k12xuhpw': {
      'pt': 'Minimo 12 caracteres ',
      'en': '',
    },
    '41xfams9': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mymfiz43': {
      'pt': 'Digite um email valido.',
      'en': '',
    },
    'knc8nifi': {
      'pt': 'Email digitado não é valido',
      'en': '',
    },
    'r9etvscr': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'd2c04s1x': {
      'pt': 'Digite uma senha valida.',
      'en': '',
    },
    '501cavq9': {
      'pt': 'Insira no minimo 6 caracteres.',
      'en': '',
    },
    'v88odqwn': {
      'pt': '15',
      'en': '',
    },
    'nf55fx3e': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '3dplc5u7': {
      'pt': 'Senhas não correspondem.',
      'en': '',
    },
    '0iy91l57': {
      'pt': 'Insira no minimo 6 caracteres.',
      'en': '',
    },
    'z4x0lfy0': {
      'pt': '15',
      'en': '',
    },
    'afioid3p': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '3og56lfb': {
      'pt': 'Criar conta',
      'en': '',
    },
    'r537h7cm': {
      'pt': 'Já tem sua conta?',
      'en': '',
    },
    '8tqqihy1': {
      'pt': ' Cadastre-se',
      'en': '',
    },
  },
  // EsqueceuSuaConta
  {
    'nw35mhkd': {
      'pt': 'Esqueceu sua senha?',
      'en': '',
    },
    'ya9ykf78': {
      'pt': 'insira seu e-mail para receber um link\npara redefinir sua senha.',
      'en': '',
    },
    'ik5hpd0d': {
      'pt': 'Digite seu Email...',
      'en': '',
    },
    '4zufh7zk': {
      'pt': 'Enviar link ',
      'en': '',
    },
  },
  // PoliicasePrivacidade
  {
    'p82d1ver': {
      'pt': '📄Políticas de privacidade ',
      'en': '',
    },
    'ke8mqvsz': {
      'pt':
          'Última atualização: [22/04/2025]\n\nEsta Política de Privacidade\n descreve como coletamos, usamos,\n armazenamos e protegemos as \ninformações dos usuários do nosso \naplicativo de\n controle de vacinação.',
      'en': '',
    },
    'pqnqyo47': {
      'pt':
          '1. Coleta de Informações\n\nColetamos os seguintes tipos de dados:\n\n- Dados do usuário autenticado: nome, e-mail,\n ID gerado pelo sistema de autenticação \n(Supabase Auth).\n- Dados dos pacientes cadastrados: \nnome, data de nascimento, CPF\n, número do cartão SUS, foto de perfil.\n- Informações de vacinação: vacinas aplicadas,\n datas, doses, profissionais responsáveis, \ncomprovantes e status das aplicações.\n- Notificações: lembretes e alertas relacionados \nà vacinação.\n\n\n2. Uso das Informações\n\nOs dados coletados são utilizados para:\n\n- Gerenciar registros de vacinação \ncom segurança e organização.\n- Enviar lembretes e notificações \nsobre vacinas pendentes, agendadas ou\n atrasadas.\n- Melhorar a usabilidade e eficiência do aplicativo.\n- Cumprir obrigações legais, quando necessário.\n\n\n3. Armazenamento e Segurança\n\nSeus dados são armazenados em servidores \nseguros utilizando a plataforma Supabase, \nque aplica criptografia e boas práticas de \nproteção de dados.\n\nApenas usuários autorizados\n podem acessar seus dados,\n respeitando regras de \npermissão definidas pelo sistema.\n\n\n4. Compartilhamento de Informações\n\nNão compartilhamos dados\n pessoais com terceiros, \nsalvo nos seguintes casos:\n\n- Requisição judicial ou obrigação legal.\n- Consentimento explícito do usuário.\n\n\n5. Direitos dos Usuários\n\nVocê tem direito de:\n\n- Acessar seus dados pessoais.\n- Corrigir ou atualizar informações incorretas.\n- Solicitar a exclusão de seus dados.\n- Revogar seu consentimento a\n qualquer momento.\n\nPara exercer esses direitos,\n entre em contato pelo suporte dentro do app.\n\n\n6. Alterações nesta Política\n\nReservamo-nos o direito de alterar\n esta Política de Privacidade a qualquer \nmomento. Em caso de mudanças significativas,\n você será informado dentro do próprio\n aplicativo.\n\n\n7. Contato\n\nSe tiver dúvidas sobre esta política,\n entre em contato com\n nossa equipe de suporte através do próprio\n aplicativo.\n',
      'en': '',
    },
  },
  // input
  {
    'mzurpl3j': {
      'pt': 'Cartão de vacina',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'sf7r8gw2': {
      'pt':
          '“Este app precisa acessar sua câmera para que você possa tirar fotos e enviar imagens.”',
      'en': '',
    },
    '1zc3jq36': {
      'pt':
          '“Este app precisa acessar suas fotos para que você possa selecionar imagens do seu dispositivo.”',
      'en': '',
    },
    'oqyblin6': {
      'pt': '',
      'en': '',
    },
    '53ydkbik': {
      'pt':
          '“Precisamos da sua localização para fornecer serviços baseados em onde você está.”',
      'en': '',
    },
    'tk5tz4x7': {
      'pt': '',
      'en': '',
    },
    'rz62k9zt': {
      'pt': '',
      'en': '',
    },
    'czrlan4u': {
      'pt': '',
      'en': '',
    },
    '1bnesfka': {
      'pt': '',
      'en': '',
    },
    'a3istpc0': {
      'pt': '',
      'en': '',
    },
    '47wcrd6u': {
      'pt': '',
      'en': '',
    },
    '459hct1y': {
      'pt': '',
      'en': '',
    },
    'yon2ms8o': {
      'pt': '',
      'en': '',
    },
    'itpkq7yj': {
      'pt': '',
      'en': '',
    },
    'ulvtb9eb': {
      'pt': '',
      'en': '',
    },
    'h05q67k0': {
      'pt': '',
      'en': '',
    },
    'r6a0jnfa': {
      'pt': '',
      'en': '',
    },
    'hgi6mn7h': {
      'pt': '',
      'en': '',
    },
    'rn3w42ul': {
      'pt': '',
      'en': '',
    },
    'gdk24u5r': {
      'pt': '',
      'en': '',
    },
    'iqi3hwee': {
      'pt': '',
      'en': '',
    },
    'r01e43mg': {
      'pt': '',
      'en': '',
    },
    '6eoi22uc': {
      'pt': '',
      'en': '',
    },
    '6i0fj675': {
      'pt': '',
      'en': '',
    },
    'queiqc1h': {
      'pt': '',
      'en': '',
    },
    'nme801oo': {
      'pt': '',
      'en': '',
    },
    '9o5vukzz': {
      'pt': '',
      'en': '',
    },
    'lyqyylio': {
      'pt': '',
      'en': '',
    },
    'f7t071o7': {
      'pt': '',
      'en': '',
    },
    '7s2191he': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
